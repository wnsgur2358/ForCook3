import pandas as pd

# 데이터베이스에서 음식 데이터를 불러오는 함수
def load_food_data():
    # MySQL 데이터베이스에서 음식 데이터를 로드하는 코드 작성
    return pd.read_csv('food_data.csv')  # 예시로 CSV 파일에서 로드

# 추천 알고리즘
def recommend_foods(user_preferences):
    foods = load_food_data()
    
    # 사용자 취향에 맞게 데이터 필터링
    filtered_foods = foods[
        (foods['is_spicy'] == user_preferences['is_spicy']) &
        (foods['is_vegetarian'] == user_preferences['is_vegetarian']) &
        (foods['high_protein'] == user_preferences['high_protein']) &
        (foods['low_carb'] == user_preferences['low_carb']) &
        (foods['calories'] <= user_preferences['max_calories']) &
        (foods['cuisine_type'].isin(user_preferences['cuisine_type']))
    ]
    
    return filtered_foods
