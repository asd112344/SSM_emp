package com.utils;

/**
 * 分页实体类:存储当前页所有分页相关的数据
 */
public class Page {
    //起始位置
    public int start = 0;
    //每页现实的条数
    public int count = 3;
    //结束位置
    public int last = 0;
    //当前页的页码
    public int currentIndex = 1;
    //总共的页数
    public int totalIndex;
    public int getStart() {
        return start;
    }
    public void setStart(int start) {
        this.start = start;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getLast() {
        return last;
    }
    public void setLast(int last) {
        this.last = last;
    }

    public int getCurrentIndex() {
        return currentIndex;
    }

    public void setCurrentIndex(int currentIndex) {
        this.currentIndex = currentIndex;
    }

    public int getTotalIndex() {
        return totalIndex;
    }

    public void setTotalIndex(int totalIndex) {
        this.totalIndex = totalIndex;
    }

    public Page() {
    }

    public void calculateLast(int total) {

        if(0==total%count) {
            last = total-count;
        }else {
            last = total-total%count;
        }
    }

    @Override
    public String toString() {
        return "Page{" +
                "start=" + start +
                ", count=" + count +
                ", last=" + last +
                '}';
    }
}