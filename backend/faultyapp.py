from flask import Flask, request, jsonify
import sqlite3

app = Flask(__name__)

def get_user_data(user_id):
    connection = sqlite3.connect('database.db')
    cursor = connection.cursor()
    
    # Vulnerable code: using string concatenation to construct SQL query
    query = f"SELECT * FROM users WHERE id = {user_id}"
    cursor.execute(query)
    
    result = cursor.fetchone()
    connection.close()
    
    return result

@app.route('/user/<user_id>', methods=['GET'])
def user(user_id):
    user_data = get_user_data(user_id)
    if user_data:
        return jsonify(user_data)
    else:
        return jsonify({"error": "User not found"}), 404

if __name__ == '__main__':
    app.run(debug=True)
