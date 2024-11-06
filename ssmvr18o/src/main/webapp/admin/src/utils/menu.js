const menu = {
    list() {
        return [{"backMenu":[{"child":[{"buttons":["新增","查看","修改","删除","生成档案"],"menu":"老人账号","menuJump":"列表","tableName":"laorenzhanghao"}],"menu":"老人账号管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"工作人员","menuJump":"列表","tableName":"gongzuorenyuan"}],"menu":"工作人员管理"},{"child":[{"buttons":["新增","查看","修改","删除","转诊","新建订单"],"menu":"老人档案","menuJump":"列表","tableName":"laorendangan"}],"menu":"老人档案管理"},{"child":[{"buttons":["新增","查看","修改","删除","审核","派单"],"menu":"订单申请","menuJump":"列表","tableName":"dingdanshenqing"}],"menu":"订单申请管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"检查检验项目","menuJump":"列表","tableName":"jianchajianyanxiangmu"}],"menu":"检查检验项目管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"维修服务","menuJump":"列表","tableName":"weixiufuwu"}],"menu":"维修服务管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看","修改","删除"],"menu":"转诊信息","menuJump":"列表","tableName":"zhuanzhenxinxi"}],"menu":"转诊信息管理"},{"child":[{"buttons":["新增","查看","修改","删除","服务"],"menu":"生活服务","menuJump":"列表","tableName":"shenghuofuwu"}],"menu":"生活服务管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"服务记录","menuJump":"列表","tableName":"fuwujilu"}],"menu":"服务记录管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"生活用品信息","menuJump":"列表","tableName":"shenghuoyongpinxinxi"}],"menu":"生活用品信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"药品信息","menuJump":"列表","tableName":"yaopinxinxi"}],"menu":"药品信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"食物信息","menuJump":"列表","tableName":"shiwuxinxi"}],"menu":"食物信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"通告资讯","tableName":"news"},{"buttons":["新增","查看","修改","删除"],"menu":"客服咨询","tableName":"chat"},{"buttons":["查看","修改"],"menu":"轮播图管理","tableName":"config"}],"menu":"系统管理"}],"frontMenu":[{"child":[{"buttons":["查看","新建订单"],"menu":"老人档案列表","menuJump":"列表","tableName":"laorendangan"}],"menu":"老人档案模块"},{"child":[{"buttons":["新增"],"menu":"订单申请列表","menuJump":"列表","tableName":"dingdanshenqing"}],"menu":"订单申请模块"},{"child":[{"buttons":["查看"],"menu":"订单信息列表","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息模块"},{"child":[{"buttons":["查看"],"menu":"转诊信息列表","menuJump":"列表","tableName":"zhuanzhenxinxi"}],"menu":"转诊信息模块"},{"child":[{"buttons":["新增"],"menu":"生活服务列表","menuJump":"列表","tableName":"shenghuofuwu"}],"menu":"生活服务模块"},{"child":[{"buttons":["查看"],"menu":"服务记录列表","menuJump":"列表","tableName":"fuwujilu"}],"menu":"服务记录模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","新建订单"],"menu":"老人档案","menuJump":"列表","tableName":"laorendangan"}],"menu":"老人档案管理"},{"child":[{"buttons":["新增","查看"],"menu":"订单申请","menuJump":"列表","tableName":"dingdanshenqing"}],"menu":"订单申请管理"},{"child":[{"buttons":["查看"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看"],"menu":"转诊信息","menuJump":"列表","tableName":"zhuanzhenxinxi"}],"menu":"转诊信息管理"},{"child":[{"buttons":["新增","查看"],"menu":"生活服务","menuJump":"列表","tableName":"shenghuofuwu"}],"menu":"生活服务管理"},{"child":[{"buttons":["查看"],"menu":"服务记录","menuJump":"列表","tableName":"fuwujilu"}],"menu":"服务记录管理"}],"frontMenu":[{"child":[{"buttons":["查看","新建订单"],"menu":"老人档案列表","menuJump":"列表","tableName":"laorendangan"}],"menu":"老人档案模块"},{"child":[{"buttons":["新增"],"menu":"订单申请列表","menuJump":"列表","tableName":"dingdanshenqing"}],"menu":"订单申请模块"},{"child":[{"buttons":["查看"],"menu":"订单信息列表","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息模块"},{"child":[{"buttons":["查看"],"menu":"转诊信息列表","menuJump":"列表","tableName":"zhuanzhenxinxi"}],"menu":"转诊信息模块"},{"child":[{"buttons":["新增"],"menu":"生活服务列表","menuJump":"列表","tableName":"shenghuofuwu"}],"menu":"生活服务模块"},{"child":[{"buttons":["查看"],"menu":"服务记录列表","menuJump":"列表","tableName":"fuwujilu"}],"menu":"服务记录模块"}],"hasBackLogin":"否","hasBackRegister":"否","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"老人账号","tableName":"laorenzhanghao"},{"backMenu":[{"child":[{"buttons":["查看","转诊"],"menu":"老人档案","menuJump":"列表","tableName":"laorendangan"}],"menu":"老人档案管理"},{"child":[{"buttons":["查看"],"menu":"订单信息","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息管理"},{"child":[{"buttons":["查看"],"menu":"转诊信息","menuJump":"列表","tableName":"zhuanzhenxinxi"}],"menu":"转诊信息管理"},{"child":[{"buttons":["查看","服务"],"menu":"生活服务","menuJump":"列表","tableName":"shenghuofuwu"}],"menu":"生活服务管理"},{"child":[{"buttons":["查看"],"menu":"服务记录","menuJump":"列表","tableName":"fuwujilu"}],"menu":"服务记录管理"}],"frontMenu":[{"child":[{"buttons":["查看","新建订单"],"menu":"老人档案列表","menuJump":"列表","tableName":"laorendangan"}],"menu":"老人档案模块"},{"child":[{"buttons":["新增"],"menu":"订单申请列表","menuJump":"列表","tableName":"dingdanshenqing"}],"menu":"订单申请模块"},{"child":[{"buttons":["查看"],"menu":"订单信息列表","menuJump":"列表","tableName":"dingdanxinxi"}],"menu":"订单信息模块"},{"child":[{"buttons":["查看"],"menu":"转诊信息列表","menuJump":"列表","tableName":"zhuanzhenxinxi"}],"menu":"转诊信息模块"},{"child":[{"buttons":["新增"],"menu":"生活服务列表","menuJump":"列表","tableName":"shenghuofuwu"}],"menu":"生活服务模块"},{"child":[{"buttons":["查看"],"menu":"服务记录列表","menuJump":"列表","tableName":"fuwujilu"}],"menu":"服务记录模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"工作人员","tableName":"gongzuorenyuan"}]
    }
}
export default menu;