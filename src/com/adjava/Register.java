package com.adjava;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Register {
	
	@Id
	@GeneratedValue
	int id;
public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
String name;
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public int getPhonenumber() {
	return phonenumber;
}
public void setPhonenumber(int phonenumber) {
	this.phonenumber = phonenumber;
}
String password;
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
String address;
String email;
int phonenumber;
}
