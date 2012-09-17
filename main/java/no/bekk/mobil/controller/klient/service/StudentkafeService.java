package no.bekk.mobil.controller.klient.service;

import no.bekk.mobil.domene.Adresse;
import no.bekk.mobil.domene.Middag;
import no.bekk.mobil.domene.Studentkafe;
import no.bekk.mobil.domene.Telefon;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class StudentkafeService {
    public Studentkafe hentStudentkafe(int studentkafeId) {
        Studentkafe studentkafe = new Studentkafe("Arkitektur- og designhøgskolens kafe", 1);
        Adresse adresse = new Adresse();
        adresse.setLinje1("Arkitektur- og designh�gskolen i Oslo");
        adresse.setLinje2("Maridalsveien 29 ");
        Telefon telefon = new Telefon(22997163L);
        studentkafe.setAdresse(adresse);
        studentkafe.setTelefon(telefon);

        Map<String, List<Middag>> ukeMedMiddager = new HashMap<String, List<Middag>>();
        List<Middag> middager = new ArrayList<Middag>();
        Middag mandagDagens = new Middag(false, true, "dagens", "pasta");
        Middag mandagDagens2 = new Middag(false, true, "dagens", "lapskaus");
        Middag mandagVegatar = new Middag(false, true, "vegatar", "Gulrotrøsti med bearnaisesaus, salat og stekte poteter");

        middager.add(mandagDagens);
        middager.add(mandagDagens2);
        middager.add(mandagVegatar);
        ukeMedMiddager.put("Mandag", middager);
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
