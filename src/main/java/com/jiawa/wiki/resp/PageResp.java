package com.jiawa.wiki.resp;

import lombok.Data;
import lombok.ToString;

import java.util.List;

@Data
@ToString
public class PageResp<T> {
    private long total;
    private List<T> list;
}
