package com.adjava;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Adminlogin {


	
		
		
			@Id
			int id;
			public int getId() {
				return id;
			}

			public void setId(int id) {
				this.id = id;
			}

			String name,pwd;

			public String getName() {
				return name;
			}

			public void setName(String name) {
				this.name = name;
			}

			public String getPwd() {
				return pwd;
			}

			public void setPwd(String pwd) {
				this.pwd = pwd;
			}
			
			
				
		}


