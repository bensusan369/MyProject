package cn.edu.hljit.cs17.g1.pojo;

public class ZjTjxxb {
    private String tjxid;

    private String tjxlx;

    private String qzgzbh;

    private String zpgzbh;

    private String tjsj;

    public String getTjxid() {
        return tjxid;
    }

    public void setTjxid(String tjxid) {
        this.tjxid = tjxid == null ? null : tjxid.trim();
    }

    public String getTjxlx() {
        return tjxlx;
    }

    public void setTjxlx(String tjxlx) {
        this.tjxlx = tjxlx == null ? null : tjxlx.trim();
    }

    public String getQzgzbh() {
        return qzgzbh;
    }

    public void setQzgzbh(String qzgzbh) {
        this.qzgzbh = qzgzbh == null ? null : qzgzbh.trim();
    }

    public String getZpgzbh() {
        return zpgzbh;
    }

    public void setZpgzbh(String zpgzbh) {
        this.zpgzbh = zpgzbh == null ? null : zpgzbh.trim();
    }

    public String getTjsj() {
        return tjsj;
    }

    public void setTjsj(String tjsj) {
        this.tjsj = tjsj == null ? null : tjsj.trim();
    }
}