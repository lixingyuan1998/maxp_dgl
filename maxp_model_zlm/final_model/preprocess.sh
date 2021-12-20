# 参数
base_path=/root/workspace/dgl/maxp_model_zlm/final_model
env_path = dgl

# 环境配置
cd $base_path
conda activate $env_path

# 数据预处理
cd  $base_path/preprocess
# demo1合并边连接关系文件，合并初赛的验证集与测试集节点
python demo1.py
# demo2处理边和节点文件，创建对应节点映射文件与特征文件
python demo2.py
# demo3根据边关系创建并保存图
python demo3.py
# demo4分层抽样5折划分数据集
python demo4.py
# demo5提取并保存出入度以及一阶二阶特征,总维度2+8=10
python demo5.py


# 提取并保存deep walk特征，总维度128
cd  $base_path/deep_walk
bash run.sh