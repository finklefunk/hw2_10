package org.example;


public class Main {
    public static void main(String[] args) {
        System.out.println("Hello world!");


        ClientService clientService = new ClientService();

        // створюємо Client
        Client newClient1 = new Client();
        newClient1.setName("John Doe");
        clientService.saveClient(newClient1);
        System.out.println("newClient1: " + newClient1.getName());

        Client newClient2 = new Client();
        newClient2.setName("Johnathan Doe");
        clientService.saveClient(newClient2);
        System.out.println("newClient2: " + newClient2.getName());

        // читаємо Client по id
        Client clientToUpdate = clientService.findClientById(2L);
        System.out.println("clientToUpdate's old name: " + clientToUpdate.getName());

        // оновлюємо Client
        clientToUpdate.setName("Jane Doe");
        clientService.updateClient(clientToUpdate);
        System.out.println("clientToUpdate's new name: " + clientToUpdate.getName());

        // видаляємо Client
        String nameOfDeletedClient = newClient2.getName();
        clientService.deleteClient(newClient2);
        System.out.println("deleted client: " + nameOfDeletedClient);

        PlanetService planetService = new PlanetService();

        // створюємо Planet'и
        Planet newPlanet1 = new Planet();
        newPlanet1.setId("URAN");
        newPlanet1.setName("URANUS");
        planetService.savePlanet(newPlanet1);
        System.out.println("newPlanet1: " + newPlanet1.getId());

        Planet newPlanet2 = new Planet();
        newPlanet2.setId("NEP");
        newPlanet2.setName("Neptune");
        planetService.savePlanet(newPlanet2);
        System.out.println("newPlanet2: " + newPlanet2.getId());

        // читаємо Planet по id
        Planet planetToUpdate = planetService.findPlanetById("SATURN");
        System.out.println("planetToUpdate's old name: " + planetToUpdate.getName());

        // оновлюємо Planet
        planetToUpdate.setName("Saturn");
        planetService.updatePlanet(planetToUpdate);
        System.out.println("planetToUpdate's new name: " + planetToUpdate.getName());

        // видаляємо Planet
        String nameOfDeletedPlanet = newPlanet1.getName();
        planetService.deletePlanet(newPlanet1);
        System.out.println("deleted planet: " + nameOfDeletedPlanet);

        HibernateUtil.getInstance().close();
    }
}
