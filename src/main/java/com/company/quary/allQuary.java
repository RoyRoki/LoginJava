package com.company.quary;

public class allQuary {
	public String isValid = "SELECT * FROM users WHERE username = ? AND password = ?";
	public String insert = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";
	public String delete = "DELETE FROM users WHERE username = ?";
}
