package com.fsq.mappers;

import com.fsq.entity.Admin;

/**
 * Created by FuShengqi on 2017/9/18.
 */
public interface AdminMapper {

    Admin getAdminByAdminName(String adminName);

}
