package cn.edu.hljit.cs17.g1.pojo;

public class CdlSpecialty {
    private String cdId;

    private String cdName;

    private String cdAvailability;

    private Integer cdIndex;

    private String cdSpell;

    public String getCdId() {
        return cdId;
    }

    public void setCdId(String cdId) {
        this.cdId = cdId == null ? null : cdId.trim();
    }

    public String getCdName() {
        return cdName;
    }

    public void setCdName(String cdName) {
        this.cdName = cdName == null ? null : cdName.trim();
    }

    public String getCdAvailability() {
        return cdAvailability;
    }

    public void setCdAvailability(String cdAvailability) {
        this.cdAvailability = cdAvailability == null ? null : cdAvailability.trim();
    }

    public Integer getCdIndex() {
        return cdIndex;
    }

    public void setCdIndex(Integer cdIndex) {
        this.cdIndex = cdIndex;
    }

    public String getCdSpell() {
        return cdSpell;
    }

    public void setCdSpell(String cdSpell) {
        this.cdSpell = cdSpell == null ? null : cdSpell.trim();
    }
}