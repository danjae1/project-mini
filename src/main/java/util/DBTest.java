package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/*
 * DB연결 테스트용
 * */
public class DBTest {
    public static void main(String[] args) {
        String url = "jdbc:oracle:thin:@localhost:1521:xe";  // Oracle DB 예시
        String user = "scott";  // DB 사용자명
        String password = "TIGER";  // DB 비밀번호

        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");  // JDBC11용 드라이버 클래스명
            Connection conn = DriverManager.getConnection(url, user, password);
            System.out.println("✅ DB 연결 성공!");
            conn.close();
        } catch (ClassNotFoundException e) {
            System.out.println("❌ 드라이버 클래스 못 찾음");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("❌ DB 연결 실패");
            e.printStackTrace();
        }
    }
}
