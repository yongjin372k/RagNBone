package com.ragnbone.server.models;

import java.time.LocalDateTime;

import org.springframework.stereotype.Indexed;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name="location")
@Data
public class Location {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "logID")
    private int logID;

    @Column(name = "userID")
    private int userID;

    @Column(name = "latitude")
    private double latitude;

    @Column(name = "longitude")
    private double longitude;

    @Column(name = "timestamp")
    private LocalDateTime timestamp;

    public Location() {
        // Default Constructor
    }

    public Location(
        int logID,
        int userID,
        double latitude,
        double longitude,
        LocalDateTime timestamp
    ) {
        this.logID = logID;
        this.userID = userID;
        this.latitude = latitude;
        this.longitude = longitude;
        this.timestamp = timestamp;
    }

    public int getLogID() {
        return logID;
    }

    public void setLogID(int logID) {
        this.logID = logID;
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

    public LocalDateTime getTimeStamp() {
        return timestamp;
    }

    public void setTimeStamp(LocalDateTime timestamp) {
        this.timestamp = timestamp;
    }

    @Override
  public String toString() {
    return "Location{"
        + "logID="
        + logID
        + ", userID'"
        + userID
        + '\''
        + ", latitude='"
        + latitude
        + '\''
        + ", longtitude='"
        + longitude
        + '\''
        + ", timestamp='"
        + timestamp
        + '\''
        + '}';
  }
}
