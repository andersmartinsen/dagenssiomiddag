package no.bekk.mobil.domene;

import java.util.List;
import java.util.Map;

public class Studentkafe {
    private Integer id;
    private String navn;
    private Adresse adresse;
    private Telefon telefon;
    private String ukenummer;
    private String dato;
    private String tidspunkt;
    private String kommentar;
    private Map<String, List<Middag>> middager;


    public Studentkafe() {
    }

    public Studentkafe(String navn, Integer id) {
        setNavn(navn);
        setId(id);
    }

    public String getNavn() {
        return navn;
    }

    public void setNavn(String navn) {
        this.navn = navn;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }

    public Adresse getAdresse() {
        return adresse;
    }

    public void setTelefon(Telefon telefon) {
        this.telefon = telefon;
    }

    public Telefon getTelefon() {
        return telefon;
    }

    public String getUkenummer() {
        return ukenummer;
    }

    public String getDato() {
        return dato;
    }

    public String getKommentar() {
        return kommentar;
    }

    public String getTidspunkt() {
        return tidspunkt;
    }

    public Map<String, List<Middag>> getMiddager() {
        return middager;
    }

    public void setMiddager(Map<String, List<Middag>> middager) {
        this.middager = middager;
    }
}
