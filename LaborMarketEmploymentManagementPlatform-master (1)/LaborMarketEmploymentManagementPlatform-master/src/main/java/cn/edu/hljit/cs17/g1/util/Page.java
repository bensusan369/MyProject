package cn.edu.hljit.cs17.g1.util;

public class Page {
	private int size=4;//每页条数
	private int currentPage=1;//当前页
	private int totalCount=0;//总记录数
	private int totalPage=0;//总页数
	//起始位置
	public int getStart(){

		return currentPage<1?0:(currentPage-1)*size;
	}

	
	public int getPrePage(){
		if(currentPage-1<1){
			return 1;
		} else{
			return currentPage-1;
		}
	}
	
	//${xx.prePage}
	public int getNextPage(){
		if(currentPage+1>totalPage){
			return  totalPage;
		}else{
			return currentPage+1;
		}
	}

	public int getSize() {
		return size;
	}
	public void setSize(int size) {
		this.size = size;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		//鐠侊紕鐣� 閹銆夐弫锟�
		if(this.totalCount%size==0){
			totalPage=totalCount/size;
		}else{
			totalPage=totalCount/size+1;
		}
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}








}
