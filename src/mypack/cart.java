package mypack;
                                          

public class cart implements java.io.Serializable
{
	public double itemPrice;
	public double coffeequantity;
	public double sugarquantity;
	public double waterquantity;

	public cart() {
		coffeequantity=-1;
		sugarquantity=-1;
		waterquantity=-1;
	}

	public double getItemPrice() {
		return this.itemPrice;
	}
	
	public void setItemPrice(double itemPrice) {
		this.itemPrice = itemPrice;
	}
		
	public double getCoffeequantity() {
		return this.coffeequantity;
	}

	public void setCoffeequantity(double qty) {
		this.coffeequantity = qty;
	}
	
	public double getSugarquantity() {
		return this.sugarquantity;
	}

	public void setSugarquantity(double qty) {
		this.sugarquantity = qty;
	}
	public double getWaterquantity() {
		return this.waterquantity;
	}

	public void setWaterquantity(double qty) {
		this.waterquantity = qty;
	}
}


