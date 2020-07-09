package cn.edu.hljit.cs17.g1.pojo;

public class BipSkill {
    private String bipSId;

    private String bipId;

    private String bipSYears;

    private String bipSZyjn;

    private String bipSJsdj;

    public String getBipSId() {
        return bipSId;
    }

    public void setBipSId(String bipSId) {
        this.bipSId = bipSId == null ? null : bipSId.trim();
    }

    public String getBipId() {
        return bipId;
    }

    public void setBipId(String bipId) {
        this.bipId = bipId == null ? null : bipId.trim();
    }

    public String getBipSYears() {
        return bipSYears;
    }

    public void setBipSYears(String bipSYears) {
        this.bipSYears = bipSYears == null ? null : bipSYears.trim();
    }

    public String getBipSZyjn() {
        return bipSZyjn;
    }

    public void setBipSZyjn(String bipSZyjn) {
        this.bipSZyjn = bipSZyjn == null ? null : bipSZyjn.trim();
    }

    public String getBipSJsdj() {
        return bipSJsdj;
    }

    public void setBipSJsdj(String bipSJsdj) {
        this.bipSJsdj = bipSJsdj == null ? null : bipSJsdj.trim();
    }
}