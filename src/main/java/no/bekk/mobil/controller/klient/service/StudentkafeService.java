package no.bekk.mobil.controller.klient.service;

import no.bekk.mobil.domene.*;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class StudentkafeService {
    public Studentkafe hentStudentkafe(int studentkafeId) {
        Studentkafe studentkafe = new Studentkafe("Arkitektur- og designhøgskolens kafe", 1);
        studentkafe.setKortnavn("AHO");
        studentkafe.setUkenummer("39");
        Adresse adresse = new Adresse();
        adresse.setLinje1("Arkitektur- og designhøgskolen i Oslo");
        adresse.setLinje2("Maridalsveien 29 ");
        Telefon telefon = new Telefon(22997163L);
        studentkafe.setAdresse(adresse);
        studentkafe.setTelefon(telefon);

        Pris pris = new Pris();
        pris.setInformasjon("Dagens middag\n" +
                "Vanlig porsjon\n" +
                " \n" +
                "kr 50,-\n" +
                "Stor porsjon\n" +
                " \n" +
                "kr 62,-\n" +
                "Risgrøt\n" +
                " \n" +
                "kr 33,-");
        studentkafe.setPrisInformasjon(pris);

        Map<String, List<Middag>> ukeMedMiddager = new LinkedHashMap<String, List<Middag>>();
        List<Middag> middager = new ArrayList<Middag>();
        Middag mandagDagens = new Middag(false, true, "dagens", "pasta");
        Middag mandagDagens2 = new Middag(false, true, "dagens", "lapskaus");
        Middag mandagVegatar = new Middag(false, true, "vegatar", "Gulrotrøsti med bearnaisesaus, salat og stekte poteter");

        middager.add(mandagDagens);
        middager.add(mandagDagens2);
        middager.add(mandagVegatar);
        ukeMedMiddager.put("Mandag", middager);
        ukeMedMiddager.put("Tirsdag", null);
        ukeMedMiddager.put("Onsdag", null);
        ukeMedMiddager.put("Torsdag", null);
        ukeMedMiddager.put("Fredag", null);
        studentkafe.setMiddager(ukeMedMiddager);
        return studentkafe;
    }

    public Collection<Studentkafe> hentAlleStudentkafeene() {
        Studentkafe blindern = new Studentkafe("AHO-kafeen", 1);
        Studentkafe fredrikke = new Studentkafe("Fredrikke", 2);
        Studentkafe sv = new Studentkafe("sv", 3);
        Studentkafe hf = new Studentkafe("hv", 4);
        return Arrays.asList(blindern, fredrikke, sv, hf);
    }
}
