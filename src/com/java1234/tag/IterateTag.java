package com.java1234.tag;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class IterateTag extends TagSupport{

	
	private static final long serialVersionUID = 1L;

	private String var;
	private String items;
	private Iterator iter;
	
	
	public String getVar() {
		return var;
	}


	public void setVar(String var) {
		this.var = var;
	}


	public String getItems() {
		return items;
	}


	public void setItems(String items) {
		this.items = items;
	}


	public Iterator getIter() {
		return iter;
	}


	public void setIter(Iterator iter) {
		this.iter = iter;
	}

	@Override
	public int doStartTag() throws JspException {
		// TODO Auto-generated method stub
		Object value = this.pageContext.getAttribute(items);
		if(value!=null && value instanceof List){
			this.iter = ((List)value).iterator();
			if(iter.hasNext()){
				this.pageContext.setAttribute(var, iter.next());
				return TagSupport.EVAL_BODY_INCLUDE; //执行标签体
			} else {
				return TagSupport.SKIP_BODY;
			}
		} else {
			return TagSupport.SKIP_BODY;
		}
		
	}


	@Override
	public int doAfterBody() throws JspException {
		// TODO Auto-generated method stub
		if(iter.hasNext()){
			this.pageContext.setAttribute(var, iter.next());
			return TagSupport.EVAL_BODY_AGAIN; //再执行一次标签体
		} else {
			return TagSupport.SKIP_BODY; //退出标签执行
		}
	}


	@Override
	public int doEndTag() throws JspException {
		// TODO Auto-generated method stub
		return super.doEndTag();
	}



	
}
