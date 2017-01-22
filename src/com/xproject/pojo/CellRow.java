package com.xproject.pojo;

import java.util.ArrayList;
import java.util.List;

import com.xproject.pojo.Cell;

public class CellRow {
	private List<Cell> cellList;
	
	public List<Cell> getCellList() {
		return cellList;
	}

	public void setCellList(List<Cell> cellList) {
		this.cellList = cellList;
	}

	public CellRow(int cols){
		this.cellList = new ArrayList<Cell>();
		
		for(int i=0; i<cols;i++)
			this.cellList.add(new Cell(new java.util.Random().nextInt(5)));
		
	}
	
}
