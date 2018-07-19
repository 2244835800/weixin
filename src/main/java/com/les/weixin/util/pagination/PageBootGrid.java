package com.les.weixin.util.pagination;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageInfo;

import java.util.List;

/**
 * @Author:hepo
 * @Version:v1.0
 * @Description:
 * @Date:2018/7/19/019
 * @Time:10:26
 */
public class PageBootGrid {
    private int current;
    private int rowCount;
    private List<Object> rows;
    private Long total;

    public PageBootGrid() {
    }

    public PageBootGrid(int current, int rowCount, List<Object> rows, Long total) {
        this.current = current;
        this.rowCount = rowCount;
        this.rows = rows;
        this.total = total;
    }

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public int getRowCount() {
        return rowCount;
    }

    public void setRowCount(int rowCount) {
        this.rowCount = rowCount;
    }

    public List<Object> getRows() {
        return rows;
    }

    public void setRows(List<Object> rows) {
        this.rows = rows;
    }

    public Long getTotal() {
        return total;
    }

    public void setTotal(Long total) {
        this.total = total;
    }

    public String queryForDataSet(PageInfo pageInfo){
        this.total=pageInfo.getTotal();
        this.current=pageInfo.getPageNum();
        this.rowCount=pageInfo.getSize();
        this.rows=pageInfo.getList();
        return JSON.toJSONString(this);
    }
}
