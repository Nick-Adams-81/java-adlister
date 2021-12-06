import java.sql.*;
import com.mysql.cj.jdbc.Driver;

public class JDBCLecture {

    public static void main(String[] args) throws SQLException {
        DriverManager.registerDriver(new Driver());
        Config config = new Config();
        Connection connection = DriverManager.getConnection(
                config.getUrl(),
                config.getUser(),
                config.getPassword()
        );

        String selectQuery = "SELECT * FROM albums";
        Statement statement = connection.createStatement();
        //statement.executeUpdate("INSERT INTO albums(artist, name, sales) VALUES('Nick Adams', 'Some album', 12.5)");

        ResultSet res;
        res = statement.executeQuery(selectQuery);

        while(res.next()) {
            System.out.println("Here's an album:");
            System.out.println("  id: " + res.getInt("id"));
            System.out.println("  artist: " + res.getString("artist"));
            System.out.println("  name: " + res.getString("name"));
        }
    }
}




