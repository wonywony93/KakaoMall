package com.kakao.mall.model.entity;


public class ProductVo {
	private String code;
	private String name;
	private int price;
	private int amount;
	private String content;
	private String img1;
	private String img2;
	private String img3;
	private String img4;
	private String img5;
	
	
	public ProductVo() {
		// TODO Auto-generated constructor stub
	}


	public ProductVo(String code, String name, int price, int amount, String content, String img1, String img2,
			String img3, String img4, String img5) {
		super();
		this.code = code;
		this.name = name;
		this.price = price;
		this.amount = amount;
		this.content = content;
		this.img1 = img1;
		this.img2 = img2;
		this.img3 = img3;
		this.img4 = img4;
		this.img5 = img5;
	}


	public String getCode() {
		return code;
	}


	public void setCode(String code) {
		this.code = code;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public int getAmount() {
		return amount;
	}


	public void setAmount(int amount) {
		this.amount = amount;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getImg1() {
		return img1;
	}


	public void setImg1(String img1) {
		this.img1 = img1;
	}


	public String getImg2() {
		return img2;
	}


	public void setImg2(String img2) {
		this.img2 = img2;
	}


	public String getImg3() {
		return img3;
	}


	public void setImg3(String img3) {
		this.img3 = img3;
	}


	public String getImg4() {
		return img4;
	}


	public void setImg4(String img4) {
		this.img4 = img4;
	}


	public String getImg5() {
		return img5;
	}


	public void setImg5(String img5) {
		this.img5 = img5;
	}


	@Override
	public String toString() {
		return "ProductVo [code=" + code + ", name=" + name + ", price=" + price + ", amount=" + amount + ", content="
				+ content + ", img1=" + img1 + ", img2=" + img2 + ", img3=" + img3 + ", img4=" + img4 + ", img5=" + img5
				+ "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + amount;
		result = prime * result + ((code == null) ? 0 : code.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result + ((img1 == null) ? 0 : img1.hashCode());
		result = prime * result + ((img2 == null) ? 0 : img2.hashCode());
		result = prime * result + ((img3 == null) ? 0 : img3.hashCode());
		result = prime * result + ((img4 == null) ? 0 : img4.hashCode());
		result = prime * result + ((img5 == null) ? 0 : img5.hashCode());
		result = prime * result + ((name == null) ? 0 : name.hashCode());
		result = prime * result + price;
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
		ProductVo other = (ProductVo) obj;
		if (amount != other.amount)
			return false;
		if (code == null) {
			if (other.code != null)
				return false;
		} else if (!code.equals(other.code))
			return false;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (img1 == null) {
			if (other.img1 != null)
				return false;
		} else if (!img1.equals(other.img1))
			return false;
		if (img2 == null) {
			if (other.img2 != null)
				return false;
		} else if (!img2.equals(other.img2))
			return false;
		if (img3 == null) {
			if (other.img3 != null)
				return false;
		} else if (!img3.equals(other.img3))
			return false;
		if (img4 == null) {
			if (other.img4 != null)
				return false;
		} else if (!img4.equals(other.img4))
			return false;
		if (img5 == null) {
			if (other.img5 != null)
				return false;
		} else if (!img5.equals(other.img5))
			return false;
		if (name == null) {
			if (other.name != null)
				return false;
		} else if (!name.equals(other.name))
			return false;
		if (price != other.price)
			return false;
		return true;
	}
	
	
	
}
