import java.io.Serializable;

public class Album implements Serializable {
    private int id;
    private String artist;
    private String name;
    private int release_date;
    private float sales;
    private String genre;


  public String getArtist() {
      return artist;
  }

  public String setArtist(String newArtist) {
      return this.artist = newArtist;
  }

  public String getName() {
      return name;
  }

  public String setName(String newName) {
      return this.name = newName;
  }

  public int getRelease_date() {
      return release_date;
  }

  public int setReleaseDate(int newReleaseDate) {
      return this.release_date = newReleaseDate;
  }

  public float getSales() {
      return sales;
  }

  public float setSales(float newSales) {
      return this.sales = newSales;
  }

  public String getGenre() {
      return genre;
  }

  public String setGenre(String newGenre) {
      return this.genre = newGenre;
  }
}
