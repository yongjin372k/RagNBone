package com.ragnbone.Server.models;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name="location")
@Data
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "userID")
    private int userID;

    @Column(name = "latitude")
    private double latitude;

    @Column(name = "longitude")
    private double longitude;

    public Location() {
        // Default Constructor
    }

    public Location(
        int userID,
        double latitude,
        double longitude
    ) {
        this.userID = userID;
        this.latitude = latitude;
        this.longitude = longitude;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public double getLatitude() {
        return latitude;
    }

    public void setLatitude(double latitude) {
        this.latitude = latitude;
    }

    public double getLongitude() {
        return longitude;
    }

    public void setLongitude(double longitude) {
        this.longitude = longitude;
    }

    @Override
  public String toString() {
    return "Location{"
        + "userID'"
        + userID
        + '\''
        + ", latitude='"
        + latitude
        + '\''
        + ", longtitude='"
        + longitude
        + '\''
        + '}';
  }
}
