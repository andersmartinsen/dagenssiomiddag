package no.bekk.mobil.domene;

public class Middag {
    private Integer id;
    private Boolean glutenfri;
    private Boolean laktosefri;
    private String type;
    private String innhold;

    public Middag(Boolean glutenfri, Boolean laktosefri, String type, String innhold) {
        this.glutenfri = glutenfri;
        this.laktosefri = laktosefri;
        this.type = type;
        this.innhold = innhold;
    }

    public Boolean getGlutenfri() {
        return glutenfri;
    }

    public Boolean getLaktosefri() {
        return laktosefri;
    }

    public String getType() {
        return type;
    }

    public String getInnhold() {
        return innhold;
    }
}
