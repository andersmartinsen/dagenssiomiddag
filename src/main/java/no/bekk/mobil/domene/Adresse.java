package no.bekk.mobil.domene;

public class Adresse {
    private Integer id;
    private String linje1;
    private String linje2;

    public void setLinje1(String linje1) {
        this.linje1 = linje1;
    }

    public String getLinje1() {
        return linje1;
    }

    public void setLinje2(String linje2) {
        this.linje2 = linje2;
    }

    public String getLinje2() {
        return linje2;
    }
}
