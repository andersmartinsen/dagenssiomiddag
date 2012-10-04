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

        List<Middag> mandagensMiddager = new ArrayList<Middag>();
        Middag mandagDagens = new Middag(false, false, "Dagens", "Hjemmelaget lasagne med tomatsalat og brød");
        Middag mandagDagens2 = new Middag(false, false, "Dagens", "Biff Lindstrøm med peppersaus, gulrøtter og kokte poteter");
        Middag mandagVegatar = new Middag(true, true, "Vegatar", "Grønnsakswok");
        mandagensMiddager.add(mandagDagens);
        mandagensMiddager.add(mandagDagens2);
        mandagensMiddager.add(mandagVegatar);
        studentkafe.setMandag(mandagensMiddager);


        List<Middag> tirsdagensMiddager = new ArrayList<Middag>();
        Middag tirsdag = new Middag(false, false, "Dagens", "Fiskegrateng med smeltet smør, gulrøtter og kokte poteter");
        Middag tirsdag2 = new Middag(true, true, "Dagens", "Kyllinglår med tomatsaus, salat og stekte poteter");
        Middag tirsdag3 = new Middag(false, false, "Vegetar", "Vårruller med chilisaus, salat og ris");
        tirsdagensMiddager.add(tirsdag);
        tirsdagensMiddager.add(tirsdag2);
        tirsdagensMiddager.add(tirsdag3);
        studentkafe.setTirsdag(tirsdagensMiddager);

        List<Middag> onsdagensMiddager = new ArrayList<Middag>();
        Middag onsdag = new Middag(false,false, "Dagens", "Tacotallerken");
        Middag onsdag2 = new Middag(true,true, "Dagens", "Svinekotelett med sennepssky, rødkål og kokte poteter");
        Middag onsdag3 = new Middag(false,false, "Vegetar", "Falafel med hvitløksdressing, salat og stekte småpoteter");
        onsdagensMiddager.add(onsdag);
        onsdagensMiddager.add(onsdag2);
        onsdagensMiddager.add(onsdag3);
        studentkafe.setOnsdag(onsdagensMiddager);

        List<Middag> torsdagensMiddager = new ArrayList<Middag>();
        Middag torsdag = new Middag(false,true,"Dagens", "Pasta bolognese");
        Middag torsdag2 = new Middag(true,false, "Dagens", "Ovnsbakt laks med agurksalat, gulrøtter og gratinerte dillpoteter");
        Middag torsdag3 = new Middag(true,true, "Vegetar", "Grønnsaksblanding med ris");
        torsdagensMiddager.add(torsdag);
        torsdagensMiddager.add(torsdag2);
        torsdagensMiddager.add(torsdag3);
        studentkafe.setTorsdag(torsdagensMiddager);

        List<Middag> fredagensMiddager = new ArrayList<Middag>();
        Middag fredag = new Middag(false,true, "Dagens", "Hamburgertallerken");
        Middag fredag2 = new Middag(true,false, "Vegetar", "Risgrøt med saft");
        fredagensMiddager.add(fredag);
        fredagensMiddager.add(fredag2);
        studentkafe.setFredag(fredagensMiddager);

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
