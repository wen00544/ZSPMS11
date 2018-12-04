package com.tjzs.pms.utils;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class DateUtil {
	/**
	  *  把Date转化字符串数据的方法 
	 * @param date  需要转化的 Date类数据
	 * @param pattern yy-MM-dd HH:mm:ss     y年 M 月 d 日  H 24小时制时间 h 12小时制时间  m分 s 秒
	 * @return 转化后的字符串
	 */
	public static String getDateToStr(Date time,String pattern){
		 //创建一个日期格式化的对象，构造函数（格式化成什么样子）
		 DateFormat df=new SimpleDateFormat(pattern);
		 //调用 format方法可以把date数据转化成字符串数据
		 return df.format(time);
	 }
/**
	 * 把字符串转化Date数据的方法
	 * @param time 需要转化的字符串类型数据
	 * @param pattern 字符串的格式
	 * @return 转化后的Date数据
	 * @throws ParseException 因为字符串不一定能转成时间所以可能会产生异常
	 */
	public static Date getStrToDate(String time,String pattern) throws ParseException {
		 //创建一个日期格式化的对象，构造函数（格式化成什么样子）
			DateFormat df=new SimpleDateFormat(pattern);
			//调用parse方法可以把字符串数据转化Date类
			return df.parse(time);
			
	}
	
	
	public static void main(String[] args) {
		System.out.println(DateUtil.getDateToStr(new Date(),"yyyy-MM-dd HH:mm:ss"));
		try {
	
			System.out.println(DateUtil.getStrToDate("2018-8-28", "yyyy-MM-dd"));
		} catch (ParseException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
	
	}
	
}
