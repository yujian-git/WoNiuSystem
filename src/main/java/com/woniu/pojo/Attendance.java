package com.woniu.pojo;
// Generated 2019-12-18 21:32:32 by Hibernate Tools 5.2.12.Final

import java.util.HashSet;
import java.util.Set;

/**
 * Attendance generated by hbm2java
 */
public class Attendance implements java.io.Serializable {

	private int attendanceId;
	private String attendanceName;
	private Set attendancerecords = new HashSet(0);

	public Attendance() {
	}

	public Attendance(int attendanceId) {
		this.attendanceId = attendanceId;
	}

	public Attendance(int attendanceId, String attendanceName, Set attendancerecords) {
		this.attendanceId = attendanceId;
		this.attendanceName = attendanceName;
		this.attendancerecords = attendancerecords;
	}

	public int getAttendanceId() {
		return this.attendanceId;
	}

	public void setAttendanceId(int attendanceId) {
		this.attendanceId = attendanceId;
	}

	public String getAttendanceName() {
		return this.attendanceName;
	}

	public void setAttendanceName(String attendanceName) {
		this.attendanceName = attendanceName;
	}

	public Set getAttendancerecords() {
		return this.attendancerecords;
	}

	public void setAttendancerecords(Set attendancerecords) {
		this.attendancerecords = attendancerecords;
	}

}
