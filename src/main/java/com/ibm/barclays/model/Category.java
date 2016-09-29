package com.ibm.barclays.model;

public class Category {
	private int categoryId;
	private String name;
	private String displayName;
	private int orderOfDisplay;
	private String commissionDate;
	private String sunsetDate;
	
	
	public Category() {
	}

	public Category(String name, String displayName, int orderOfDisplay, String commissionDate, String sunsetDate) {
		super();
		this.name = name;
		this.displayName = displayName;
		this.orderOfDisplay = orderOfDisplay;
		this.commissionDate = commissionDate;
		this.sunsetDate = sunsetDate;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDisplayName() {
		return displayName;
	}

	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}

	public int getOrderOfDisplay() {
		return orderOfDisplay;
	}

	public void setOrderOfDisplay(int orderOfDisplay) {
		this.orderOfDisplay = orderOfDisplay;
	}

	public String getCommissionDate() {
		return commissionDate;
	}

	public void setCommissionDate(String commissionDate) {
		this.commissionDate = commissionDate;
	}

	public String getSunsetDate() {
		return sunsetDate;
	}

	public void setSunsetDate(String sunsetDate) {
		this.sunsetDate = sunsetDate;
	}

	
}
