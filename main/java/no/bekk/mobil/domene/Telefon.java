package no.bekk.mobil.domene;


public class Telefon {
    private Integer id;
    private Long nummer;

    public Telefon(Long nummer) {
        this.nummer = nummer;
    }

    public Long getNummer() {
        return nummer;
    }
}
