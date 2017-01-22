package com.xproject.pojo;

public class Cell {
	private int frqNum;
	private String color;
	public int getFrqNum() {
		return frqNum;
	}
	public void setFrqNum(int frqNum) {
		this.frqNum = frqNum;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	
	public Cell(int frqNum)
	{
		this.frqNum = frqNum;
		this.color = "";
	}
}
