package com.ragnbone.Server.api.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.ragnbone.Server.models.Location;

@Repository
public interface LocationRepository extends JpaRepository<Location, Long> {

    Optional<Location> findByUserID(int userID);

    @Query(value = "SELECT userID, latitude, longitude FROM location;", nativeQuery = true)
    List<Location> readLocation();

}


