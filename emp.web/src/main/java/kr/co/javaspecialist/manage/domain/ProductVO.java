package kr.co.javaspecialist.manage.domain;


public class ProductVO { 

	private int productId;
	private String barcode;
	private String productName;
	private String company;
	private int price;
	private String userId;
	private String keyword;
	private String productImage;
	private String details;
//	private String location;
	
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getBarcode() {
		return barcode;
	}
	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public String getDetails() {
		return details;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	@Override
	public String toString() {
		return "ProductVO [productId=" + productId + ", barcode=" + barcode
				+ ", productName=" + productName + ", company=" + company
				+ ", price=" + price + ", userId=" + userId + ", keyword="
				+ keyword + ", productImage=" + productImage + ", details="
				+ details + "]";
	}

}
