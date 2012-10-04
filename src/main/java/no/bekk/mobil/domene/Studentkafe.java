package no.bekk.mobil.domene;

import java.util.List;

public class Studentkafe {
    private Integer id;
    private String navn;
    private String kortnavn;
    private Adresse adresse;
    private Telefon telefon;
    private String ukenummer;
    private String dato;
    private String tidspunkt;
    private String kommentar;
    private List<Middag> mandag;
    private List<Middag> tirsdag;
    private List<Middag> onsdag;
    private List<Middag> torsdag;
    private List<Middag> fredag;
    private Pris prisInformasjon;

    public Studentkafe() {
    }

    public Studentkafe(String navn, Integer id) {
        setNavn(navn);
        setId(id);
    }

    public void setPrisInformasjon(Pris prisInformasjon) {
        this.prisInformasjon = prisInformasjon;
    }

    public Pris getPrisInformasjon() {
        return prisInformasjon;
    }

    public void setUkenummer(String ukenummer) {
        this.ukenummer = ukenummer;
    }

    public String getNavn() {
        return navn;
    }

    public void setNavn(String navn) {
        this.navn = navn;
    }

    public void setKortnavn(String kortnavn) {
        this.kortnavn = kortnavn;
    }

    public String getKortnavn() {
        return kortnavn;
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

    public List<Middag> getMandag() {
        return mandag;
    }

    public void setMandag(List<Middag> mandag) {
        this.mandag = mandag;
    }

    public List<Middag> getTirsdag() {
        return tirsdag;
    }

    public void setTirsdag(List<Middag> tirsdag) {
        this.tirsdag = tirsdag;
    }

    public List<Middag> getOnsdag() {
        return onsdag;
    }

    public void setOnsdag(List<Middag> onsdag) {
        this.onsdag = onsdag;
    }

    public List<Middag> getTorsdag() {
        return torsdag;
    }

    public void setTorsdag(List<Middag> torsdag) {
        this.torsdag = torsdag;
    }

    public List<Middag> getFredag() {
        return fredag;
    }

    public void setFredag(List<Middag> fredag) {
        this.fredag = fredag;
    }
}
