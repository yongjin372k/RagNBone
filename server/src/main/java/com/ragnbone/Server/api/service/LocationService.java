package com.ragnbone.server.api.service;

import com.ragnbone.server.api.repository.LocationRepository;
import com.ragnbone.server.models.Location;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class LocationService {
    
    @Autowired
    private LocationRepository locationRepository;

    public void saveLocationUpdate(Location location) {
        locationRepository.save(location);
    }
}
