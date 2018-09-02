package com.kakao.mall.model.entity;

public class ShoppingVo {

	private String id;
	private String code;
	private int amount;
	private String purchaseTime;
	private int totalMoney;
	private String name;

	
	public ShoppingVo() {
		// TODO Auto-generated constructor stub
	}


	public ShoppingVo(String id, String code, int amount, String purchaseTime, int totalMoney, String name) {
		super();
		this.id = id;
		this.code = code;
		this.amount = amount;
		this.purchaseTime = purchaseTime;
		this.totalMoney = totalMoney;
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public String getPurchaseTime() {
		return purchaseTime;
	}


	public void setPurchaseTime(String purchaseTime) {
		this.purchaseTime = purchaseTime;
	}


	public int getTotalMoney() {
		return totalMoney;
	}


	public void setTotalMoney(int totalMoney) {
		this.totalMoney = totalMoney;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	@Override
	public String toString() {
		return "ShoppingVo [id=" + id + ", code=" + code + ", amount=" + amount + ", purchaseTime=" + purchaseTime
				+ ", totalMoney=" + totalMoney + ", name=" + name + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + amount;
		result = prime * result + ((code == null) ? 0 : code.hashCode());
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + ((purchaseTime == null) ? 0 : purchaseTime.hashCode());
		result = prime * result + totalMoney;
		return result;
	}


	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ShoppingVo other = (ShoppingVo) obj;
		if (amount != other.amount)
			return false;
		if (code == null) {
			if (other.code != null)
				return false;
		} else if (!code.equals(other.code))
			return false;
		if (id == null) {
			if (other.id != null)
				return false;
		} else if (!id.equals(other.id))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (purchaseTime == null) {
			if (other.purchaseTime != null)
				return false;
		} else if (!purchaseTime.equals(other.purchaseTime))
			return false;
		if (totalMoney != other.totalMoney)
			return false;
		return true;
	}

	
	
	
	
}
