package com.JavaWebApplication.Beans;

public class Chauffeur extends Users {
	
	private String service;
	private long identite;
	
	public Chauffeur(String service, long identite) {
		super();
		this.service = service;
		this.identite = identite;
	}

	public String getService() {
		return service;
	}

	public long getIdentite() {
		return identite;
	}
}
