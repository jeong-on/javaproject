package airdnd;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class Lodging_DB {

	public int create(Lodging_VO bag) throws Exception  {
		
		Class.forName("com.mysql.jdbc.Driver");

		System.out.println("1. 커넥터 사용 설정 성공. <br>");

		String url = "jdbc:mysql://localhost:3306/airdnd";
		
		Connection con = DriverManager.getConnection(url, "root", "1234");

		System.out.println("2. db연결 성공. <br>");

		String sql = "insert into lodging values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getCode());
		ps.setString(2, bag.getName());
		ps.setString(3, bag.getType());
		ps.setString(4, bag.getCost());
		ps.setString(5, bag.getPersonal());
		ps.setString(6, bag.getContents());
		ps.setString(7, bag.getLocation());
		ps.setString(8, bag.getRooms());
		ps.setString(9, bag.getAnimals());
		ps.setString(10, bag.getDate());
		System.out.println("3. SQL문을 만들기 성공. <br>");

		int result = ps.executeUpdate();
		System.out.println("4. SQL문을 mySQL서버로 전송 성공. <br>");
		return result;
	}
	
	public void update(Lodging_VO bag) throws Exception  {
		Class.forName("com.mysql.jdbc.Driver");

		System.out.println("1. 커넥터 사용 설정 성공. <br>");
		
		String url = "jdbc:mysql://localhost:3306/airdnd";
		
		Connection con = DriverManager.getConnection(url, "root", "1234");
		
		System.out.println("2. db연결 성공. <br>");
		
		String sql = "update lodging set lodging_cost = ?, lodging_contents = ? where lodging_code = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, bag.getCost());
		ps.setString(2, bag.getContents());
		ps.setString(3, bag.getCode());
		System.out.println("3. SQL문을 만들기 성공. <br>");
		
		ps.executeUpdate();
		System.out.println("4. SQL문을 mySQL서버로 전송 성공. <br>");
	}
	
	public void delete(String lodging_code) throws Exception  {
		Class.forName("com.mysql.jdbc.Driver");

		System.out.println("1. 커넥터 사용 설정 성공. <br>");

		String url = "jdbc:mysql://localhost:3306/airdnd";
		
		Connection con = DriverManager.getConnection(url, "root", "1234");

		System.out.println("2. db연결 성공. <br>");

		String sql = "delete from lodging where lodging_code = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, lodging_code);
		System.out.println("3. SQL문을 만들기 성공. <br>");
		
		ps.executeUpdate();
		System.out.println("4. SQL문을 mySQL서버로 전송 성공. <br>");
	}
	
	public Lodging_VO read2(String lodging_code) throws Exception  {

		Class.forName("com.mysql.jdbc.Driver");
		
		System.out.println("1. 커넥터 사용 설정 성공. <br>");

		String url = "jdbc:mysql://localhost:3306/airdnd";
		
		Connection con = DriverManager.getConnection(url, "root", "1234");

		System.out.println("2. db연결 성공. <br>");

		String sql = "select * from lodging where lodging_code = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, lodging_code);
		System.out.println("3. SQL문을 만들기 성공. <br>");

		ResultSet rs = ps.executeQuery();
		System.out.println("4. SQL문을 mySQL서버로 전송 성공. <br>");
		
		Lodging_VO bag = new Lodging_VO();
		if (rs.next()) {
			String lodging_code2 = rs.getString("lodging_code");
			String lodging_name = rs.getString(2);
			String lodging_type = rs.getString(3);
			String lodging_cost = rs.getString(4);
			String lodging_personal = rs.getString(5);
			String lodging_contents = rs.getString(6);
			String lodging_location = rs.getString(7);
			String lodging_rooms = rs.getString(8);
			String lodging_animals = rs.getString(9);
			String lodging_date = rs.getString(10);
			bag.setCode(lodging_code2);
			bag.setName(lodging_name);
			bag.setType(lodging_type);
			bag.setCost(lodging_cost);
			bag.setPersonal(lodging_personal);
			bag.setContents(lodging_contents);
			bag.setLocation(lodging_location);
			bag.setRooms(lodging_rooms);
			bag.setAnimals(lodging_animals);
			bag.setDate(lodging_date);
		}
		return bag;
	}
	
	public Lodging_VO read(String lodging_code) throws Exception  {

		Class.forName("com.mysql.jdbc.Driver");
		
		System.out.println("1. 커넥터 사용 설정 성공. <br>");

		String url = "jdbc:mysql://localhost:3306/airdnd";
		
		Connection con = DriverManager.getConnection(url, "root", "1234");

		System.out.println("2. db연결 성공. <br>");

		String sql = "select * from lodging where lodging_code = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, lodging_code);
		System.out.println("3. SQL문을 만들기 성공. <br>");

		ResultSet rs = ps.executeQuery();
		System.out.println("4. SQL문을 mySQL서버로 전송 성공. <br>");
		
		Lodging_VO bag = new Lodging_VO();
		if (rs.next()) {
			String lodging_code2 = rs.getString("lodging_code");
			String lodging_name = rs.getString(2);
			String lodging_type = rs.getString(3);
			String lodging_cost = rs.getString(4);
			String lodging_personal = rs.getString(5);
			String lodging_contents = rs.getString(6);
			String lodging_location = rs.getString(7);
			String lodging_rooms = rs.getString(8);
			String lodging_animals = rs.getString(9);
			String lodging_date = rs.getString(10);
			bag.setCode(lodging_code2);
			bag.setName(lodging_name);
			bag.setType(lodging_type);
			bag.setCost(lodging_cost);
			bag.setPersonal(lodging_personal);
			bag.setContents(lodging_contents);
			bag.setLocation(lodging_location);
			bag.setRooms(lodging_rooms);
			bag.setAnimals(lodging_animals);
			bag.setDate(lodging_date);
		}	return bag;
	}
	
	public ArrayList<Lodging_VO> list() throws Exception  {
		ArrayList<Lodging_VO> list = new ArrayList<>();
		
		Class.forName("com.mysql.jdbc.Driver");

		System.out.println("1. 커넥터 사용 설정 성공. <br>");

		String url = "jdbc:mysql://localhost:3306/airdnd";
		
		Connection con = DriverManager.getConnection(url, "root", "1234");

		System.out.println("2. db연결 성공. <br>");

		String sql = "select * from lodging";
		PreparedStatement ps = con.prepareStatement(sql);
		System.out.println("3. SQL문을 만들기 성공. <br>");

		ResultSet rs = ps.executeQuery();
		System.out.println("4. SQL문을 mySQL서버로 전송 성공. <br>");
		
		while (rs.next()) {
			String lodging_code2 = rs.getString("lodging_code");
			String lodging_name = rs.getString(2);
			String lodging_type = rs.getString(3);
			String lodging_cost = rs.getString(4);
			String lodging_personal = rs.getString(5);
			String lodging_contents = rs.getString(6);
			String lodging_location = rs.getString(7);
			String lodging_rooms = rs.getString(8);
			String lodging_animals = rs.getString(9);
			String lodging_date = rs.getString(10);
			
			Lodging_VO bag2 = new Lodging_VO();
			
			bag2.setCode(lodging_code2);
			bag2.setName(lodging_name);
			bag2.setType(lodging_type);
			bag2.setCost(lodging_cost);
			bag2.setPersonal(lodging_personal);
			bag2.setContents(lodging_contents);
			bag2.setLocation(lodging_location);
			bag2.setRooms(lodging_rooms);
			bag2.setAnimals(lodging_animals);
			bag2.setDate(lodging_date);
			
			list.add(bag2);
		}
		System.out.println(list.size() + "================");
		
		return list;
	}
	
}

