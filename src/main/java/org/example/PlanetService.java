package org.example;

public class PlanetService {

    private PlanetDao planetDao = new PlanetDao();

    public void savePlanet(Planet planet) { planetDao.save(planet); }

    public Planet findPlanetById(String id) {
        return planetDao.findById(id);
    }

    public void updatePlanet(Planet planet) {
        planetDao.update(planet);
    }

    public void deletePlanet(Planet planet) {
        planetDao.delete(planet);
    }
}
