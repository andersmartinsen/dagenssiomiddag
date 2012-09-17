package no.bekk.mobil.domene;

public class Pris {
    private Integer id;
    private Integer pris;
    private String storrelse;

    public Integer getPris() {
        return pris;
    }

    public void setPris(Integer pris) {
        this.pris = pris;
    }

    public void setStorrelse(String storrelse) {
        this.storrelse = storrelse;
    }

    public String getStorrelse() {
        return storrelse;
    }
}
