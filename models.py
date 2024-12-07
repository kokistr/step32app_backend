# MySQLデータベースの操作を管理するためのモデルを作成
import mysql.connector
from config import DB_CONFIG

def get_db_connection():
    return mysql.connector.connect(**DB_CONFIG)

def fetch_all_recipes():
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM recipes")
    recipes = cursor.fetchall()
    conn.close()
    return recipes

def fetch_recipe_by_id(recipe_id):
    conn = get_db_connection()
    cursor = conn.cursor(dictionary=True)
    cursor.execute("SELECT * FROM recipes WHERE id = %s", (recipe_id,))
    recipe = cursor.fetchone()
    conn.close()
    return recipe

def update_calendar(recipe_id, calendar_date):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(
        "UPDATE recipes SET on_calendar = TRUE, calendar_date = %s WHERE id = %s",
        (calendar_date, recipe_id)
    )
    conn.commit()
    conn.close()

def remove_from_calendar(recipe_id):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(
        "UPDATE recipes SET on_calendar = FALSE, calendar_date = NULL WHERE id = %s",
        (recipe_id,)
    )
    conn.commit()
    conn.close()

def toggle_favorite(recipe_id, on_favorite):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(
        "UPDATE recipes SET on_favorite = %s WHERE id = %s",
        (on_favorite, recipe_id)
    )
    conn.commit()
    conn.close()

def remove_from_candidates(recipe_id):
    conn = get_db_connection()
    cursor = conn.cursor()
    cursor.execute(
        "UPDATE recipes SET on_candidate = FALSE WHERE id = %s",
        (recipe_id,)
    )
    conn.commit()
    conn.close()