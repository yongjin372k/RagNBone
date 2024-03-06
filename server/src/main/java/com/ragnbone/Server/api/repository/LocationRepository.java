package com.ragnbone.server.api.repository;

import com.ragnbone.server.models.Location;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public class LocationRepository extends JpaRepository<Location, Long> {
    
}
