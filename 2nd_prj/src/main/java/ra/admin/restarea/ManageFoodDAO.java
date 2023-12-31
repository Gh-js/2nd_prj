package ra.admin.restarea;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import ra.util.DbConnection;

public class ManageFoodDAO {

	private static ManageFoodDAO mfDAO;
	
	private ManageFoodDAO() {
		
	}//ManageFoodDAO
	
	public static ManageFoodDAO getInstance() {
		if(mfDAO == null) {
			mfDAO = new ManageFoodDAO();
		}//end if
		return mfDAO;
	}//getInstance
	
	public boolean insertFood(ManageFoodVO mfVO) throws SQLException {
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		DbConnection db = DbConnection.getInstance();
		
		try {
		
			con = db.getConn("jdbc/dbcp");
			
			StringBuilder insertFood = new StringBuilder();
			
			insertFood
			.append("	insert into food(fno, rano, fname, fimage, fprice, fdetail, fdate)	")
			.append("	values((select max(fno)+1 from food),?,?,?,?,?,sysdate)			");
			
			pstmt = con.prepareStatement(insertFood.toString());
			
			pstmt.setString(1, mfVO.getRestAreaNum());
			pstmt.setString(2, mfVO.getFoodName());
			pstmt.setString(3, mfVO.getFoodImage());
			pstmt.setInt(4, mfVO.getFoodPrice());
			pstmt.setString(5, mfVO.getFoodDetail());
			
			boolean flag = pstmt.execute();
			
			return flag;
		}finally {
			db.dbClose(null, pstmt, con);
		}//finally
		
	}//insertFood
	
	public int updateFood(ManageFoodVO mfVO) throws SQLException {
		int rowCnt = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		DbConnection db = DbConnection.getInstance();
		
		try {
			con = db.getConn("jdbc/dbcp");
			
			StringBuilder updateFood = new StringBuilder();
			updateFood
			.append("	update food									")
			.append("	set fimage=?, fname=?, fprice=?, fdetail=?	")
			.append("	where fno=? and rano=?						");
			
			pstmt = con.prepareStatement(updateFood.toString());
			
			pstmt.setString(1, mfVO.getFoodImage());
			pstmt.setString(2, mfVO.getFoodName());
			pstmt.setInt(3, mfVO.getFoodPrice());
			pstmt.setString(4, mfVO.getFoodDetail());
			pstmt.setInt(5, mfVO.getFoodNum());
			pstmt.setString(6, mfVO.getRestAreaNum());
			
			rowCnt = pstmt.executeUpdate();
			
		}finally {
			db.dbClose(null, pstmt, con);
		}//end finally
		return rowCnt;
	}//updateFood
	
	public int deleteFood(String fno, String rano) throws SQLException {
		int rowCnt = 0;
		
		Connection con = null;
		PreparedStatement pstmt = null;
		
		DbConnection db = DbConnection.getInstance();
		
		try {
			con = db.getConn("jdbc/dbcp");
			
			String updateFood = "delete from food where fno=? and rano=?";
			
			pstmt = con.prepareStatement(updateFood);
			
			pstmt.setString(1, fno);
			pstmt.setString(2, rano);
			
			rowCnt = pstmt.executeUpdate();
			
		}finally {
			db.dbClose(null, pstmt, con);
		}//end finally
		return rowCnt;
	}//deleteFood
	
}//class
