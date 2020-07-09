package cn.edu.hljit.cs17.g1.pojo;

public class Bio {
    private String bioId;

    private String bioNo;

    private String bioName;

    private String bioShortname;

    private String bioOrgtype;

    private String cdgRegtype;

    private String bioIndustry;

    private String bioRgaRegioncode;

    private String bioBuaPostcode;

    private String bioConFax;

    private String bioConMail;

    private String bioBuaAddress;

    public String getBioId() {
        return bioId;
    }

    public void setBioId(String bioId) {
        this.bioId = bioId == null ? null : bioId.trim();
    }

    public String getBioNo() {
        return bioNo;
    }

    public void setBioNo(String bioNo) {
        this.bioNo = bioNo == null ? null : bioNo.trim();
    }

    public String getBioName() {
        return bioName;
    }

    public void setBioName(String bioName) {
        this.bioName = bioName == null ? null : bioName.trim();
    }

    public String getBioShortname() {
        return bioShortname;
    }

    public void setBioShortname(String bioShortname) {
        this.bioShortname = bioShortname == null ? null : bioShortname.trim();
    }

    public String getBioOrgtype() {
        return bioOrgtype;
    }

    public void setBioOrgtype(String bioOrgtype) {
        this.bioOrgtype = bioOrgtype == null ? null : bioOrgtype.trim();
    }

    public String getCdgRegtype() {
        return cdgRegtype;
    }

    public void setCdgRegtype(String cdgRegtype) {
        this.cdgRegtype = cdgRegtype == null ? null : cdgRegtype.trim();
    }

    public String getBioIndustry() {
        return bioIndustry;
    }

    public void setBioIndustry(String bioIndustry) {
        this.bioIndustry = bioIndustry == null ? null : bioIndustry.trim();
    }

    public String getBioRgaRegioncode() {
        return bioRgaRegioncode;
    }

    public void setBioRgaRegioncode(String bioRgaRegioncode) {
        this.bioRgaRegioncode = bioRgaRegioncode == null ? null : bioRgaRegioncode.trim();
    }

    public String getBioBuaPostcode() {
        return bioBuaPostcode;
    }

    public void setBioBuaPostcode(String bioBuaPostcode) {
        this.bioBuaPostcode = bioBuaPostcode == null ? null : bioBuaPostcode.trim();
    }

    public String getBioConFax() {
        return bioConFax;
    }

    public void setBioConFax(String bioConFax) {
        this.bioConFax = bioConFax == null ? null : bioConFax.trim();
    }

    public String getBioConMail() {
        return bioConMail;
    }

    public void setBioConMail(String bioConMail) {
        this.bioConMail = bioConMail == null ? null : bioConMail.trim();
    }

    public String getBioBuaAddress() {
        return bioBuaAddress;
    }

    public void setBioBuaAddress(String bioBuaAddress) {
        this.bioBuaAddress = bioBuaAddress == null ? null : bioBuaAddress.trim();
    }
}