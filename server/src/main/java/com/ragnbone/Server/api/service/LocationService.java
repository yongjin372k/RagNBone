package com.ragnbone.server.api.service;

import com.ragnbone.server.api.repository.LocationRepository;
import com.ragnbone.server.models.Location;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LocationService {
    
    @Autowired
    private LocationRepository locationRepository;

    public void saveLocationUpdate(Location location) {

        Optional<Location> existingLocation = locationRepository.findByUserID(location.getUserID());
        if (existingLocation.isPresent()) {
            // Update existing location
            existingLocation.get().setLatitude(location.getLatitude());
            existingLocation.get().setLongitude(location.getLongitude());

            locationRepository.save(existingLocation.get());
        } else {
            // Insert new location
            locationRepository.save(location);
        }
    }



}
