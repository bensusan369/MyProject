package cn.edu.hljit.cs17.g1.pojo;

public class CdgHealthstate implements java.io.Serializable{
    private String cdId;
    private String cdName;
    private String cdAvailability;
    private Integer cdIndex;

    public String getCdId() {
        return cdId;
    }

    public void setCdId(String cdId) {
        this.cdId = cdId;
    }

    public String getCdName() {
        return cdName;
    }

    public void setCdName(String cdName) {
        this.cdName = cdName;
    }

    public String getCdAvailability() {
        return cdAvailability;
    }

    public void setCdAvailability(String cdAvailability) {
        this.cdAvailability = cdAvailability;
    }

    public Integer getCdIndex() {
        return cdIndex;
    }

    public void setCdIndex(Integer cdIndex) {
        this.cdIndex = cdIndex;
    }
}
