package cn.edu.hljit.cs17.g1.util;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class PageTag extends SimpleTagSupport{
	private int count;
	private int pageIndex;
	private String url;
	
	
	public String getUrl() {
		return url;
	}


	public void setUrl(String url) {
		this.url = url;
	}


	public int getCount() {
		return count;
	}


	public void setCount(int count) {
		this.count = count;
	}


	public int getPageIndex() {
		return pageIndex;
	}


	public void setPageIndex(int pageIndex) {
		this.pageIndex = pageIndex;
	}


	@Override
	public void doTag() throws JspException, IOException {
		PageContext pageContext = (PageContext)this.getJspContext();
		JspWriter out = pageContext.getOut();
		HttpServletRequest request = (HttpServletRequest)pageContext.getRequest();
		Map<String,String[]> map = request.getParameterMap();
		out.println("<script>");
		out.println("var count = "+count+";");
		out.println("		function nextPage(){");
		out.println("			if(parseInt(pageForm.currentPage.value)>=count){");
		out.println("				alert('already is last page');");
		out.println("				return;");
		out.println("			}");
		out.println("			pageForm.currentPage.value = parseInt(pageForm.currentPage.value)+1;");
		out.println("			pageForm.submit();");
		out.println("		}");
		out.println("		function upPage(){");
		out.println("			if(parseInt(pageForm.currentPage.value)<=1){");
		out.println("				alert('already is first page');");
		out.println("				return;");
		out.println("			}");
		out.println("			pageForm.currentPage.value = parseInt(pageForm.currentPage.value)-1;");
		out.println("			pageForm.submit();");
		out.println("		}");
		out.println("		function firstPage(){");
		out.println("			pageForm.currentPage.value = 1;");
		out.println("			pageForm.submit();");
		out.println("		}");
		out.println("		function lastPage(){");
		out.println("			pageForm.currentPage.value = count;");
		out.println("			pageForm.submit();");
		out.println("		}");
		out.println("</script>");
		out.println("<form name='pageForm' action='"+url+"' method='post'>");
		//��ѯ����������  ����request������
		//����ѯ���������е����ֺ�value ƴ��hidden
		Set<String> set = map.keySet();
		for(String key:set){
			String[] values = map.get(key);
			if(!key.equals("currentPage")){
				for(String value :values){
					out.println("  <input type='hidden' name='"+key+"' value='"+value+"' />");
				}
			}
		}
		out.println("<table align='center' width='98%' border='0' cellspacing='0' cellpadding='0'>");
		out.println("    <tr align='right' >");
		out.println("      <td>");
		out.println("      <input name='button22' type='button'class='BUTTONs3'  value='|<<' onclick='firstPage();'>&nbsp;&nbsp;");
		out.println("      <input name='button23' type='button' class='BUTTONs3'  value='<<' onclick='upPage();'>");
		out.println("      <input type='text' size='1' name='currentPage' value='"+pageIndex+"' style='height:17px;width:30px;font-size:12px;font-weight:900;text-align:right' readonly>");
		out.println("      <input name='button22' type='button'class='BUTTONs3'  value='>>' onclick='nextPage();'>&nbsp;&nbsp;");
		out.println("      <input name='button23' type='button' class='BUTTONs3'  value='>>|' onclick='lastPage();'>");
		out.println("      &nbsp;&nbsp;&nbsp;<span style='font-weight:900'>"+pageIndex+"/"+count+"</span>&nbsp;");
		out.println("      </td>");
		out.println("    </tr>");
		out.println("</table>");	
		out.println("</form>");

	}
}
