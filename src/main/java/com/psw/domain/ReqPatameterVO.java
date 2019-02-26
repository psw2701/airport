package com.psw.domain;

public class ReqPatameterVO {
	private int schStTime;
	private int schEdTime;
	private boolean schLineType;
	private boolean schIOType;
	private AirportVO schAirCode;

	public int getSchStTime() {
		return schStTime;
	}

	public void setSchStTime(int schStTime) {
		this.schStTime = schStTime;
	}

	public int getSchEdTime() {
		return schEdTime;
	}

	public void setSchEdTime(int schEdTime) {
		this.schEdTime = schEdTime;
	}

	public boolean isSchLineType() {
		return schLineType;
	}

	public void setSchLineType(boolean schLineType) {
		this.schLineType = schLineType;
	}

	public boolean isSchIOType() {
		return schIOType;
	}

	public void setSchIOType(boolean schIOType) {
		this.schIOType = schIOType;
	}

	public AirportVO getSchAirCode() {
		return schAirCode;
	}

	public void setSchAirCode(AirportVO schAirCode) {
		this.schAirCode = schAirCode;
	}

	@Override
	public String toString() {
		return "ReqPatameterVO [schStTime=" + schStTime + ", schEdTime=" + schEdTime + ", schLineType=" + schLineType
				+ ", schIOType=" + schIOType + ", schAirCode=" + schAirCode + "]";
	}

}
