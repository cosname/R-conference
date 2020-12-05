---
layout: page
title: 第十二届中国R会议（北京）
location: bj2020
---

<button type="button" class="btn btn-success center-block" id="toggle-all">展开/隐藏所有摘要</button>
 <script type="text/javascript">
 $('#toggle-all').on('click', function (e) {
     $('.collapse').collapse('toggle');
 })
 </script>

<div class="alert alert-info" role="alert"><h3 class="text-center">数据科学专场</h3></div>

<table class="table table-striped">

  <tr>
    <td class="col-md-2">
    <p>王菲菲</p>
    </td>
    <td class="col-md-8">
    <p class="text-center"><strong>Distributed One-Step Upgraded Estimation for Non-Uniformly and Non-Randomly Distributed Data</strong></p>
    </td>
    <td class="col-md-2">
    <button type="button" class="btn btn-default pull-right" data-toggle="collapse" href="#session-1-sub-1">详情</button>
    </td>
  </tr>
  <tr class="collapse" id="session-1-sub-1">
    <td colspan="3">
    <p><button type="button" class="btn btn-primary"><strong>摘要</strong></button> One-shot-type (or divide-and-conquer) estimators have been widely used for distributed statistical analysis. However, their outstanding statistical efficiency hinges on two critical conditions. The first is the uniformity condition, which requires that the sample sizes allocated to different Workers should be as comparable as possible. The second one is the randomness condition, which requires that the data should be distributed across Workers as randomly as possible. Considering that both conditions are often violated in practice, we prove both theoretically and empirically in this work that the violation of either condition can seriously degrade the statistical efficiency of one-shot estimators, or even make them inconsistent. To fix this problem, we propose a novel one-step upgraded pilot (OSUP) method. In the first step of the algorithm, a pilot estimate is computed based on randomly selected samples from different Workers. In the second step, we conduct one-step updating based on the pilot estimate by summarizing the derivative information on each Worker. We show theoretically that the resulting OSUP estimator can be as statistically efficient as the whole sample maximum likelihood estimator without any restrictive assumption about distribution uniformity and randomness. Extensive numerical studies are presented to demonstrate the finite sample performance of the OSUP estimator. Finally, by way of an illustration, an American Airlines dataset is analyzed on a Spark cluster.</p>
    <p><button type="button" class="btn btn-info"><strong>演讲者</strong></button> 王菲菲，中国人民大学统计学院助理教授，北京大学光华管理学院统计学博士。研究上关注文本挖掘及其商业应用、大数据建模、空间统计学、社交网络分析等，在Journal of Econometrics、Journal of Business and Economic Statistics、Statistics in Medicine等期刊上均有发表。。</p>
    </td>
  </tr>

  <tr>
    <td class="col-md-2">
    <p>周静</p>
    </td>
    <td class="col-md-8">
    <p class="text-center"><strong>Progressive Principle Component Analysis for Compressing Deep Convolutional Neural Networks

</strong></p>
    </td>
    <td class="col-md-2">
    <button type="button" class="btn btn-default pull-right" data-toggle="collapse" href="#session-1-sub-2">详情</button>
    </td>
  </tr>
  <tr class="collapse" id="session-1-sub-2">
    <td colspan="3">
    <p><button type="button" class="btn btn-primary"><strong>摘要</strong></button> In this work, we propose a progressive principal component analysis (PPCA) method for compressing deep convolutional neural networks. The proposed method starts with a prespecified layer and progressively moves on to the final output layer. For each target layer, PPCA conducts kernel principal component analysis for the estimated kernel weights. This leads to a significant reduction in the number of kernels in the current layer. As a consequence, the channels used for the next layer are also reduced substantially. This is because the number of kernels used in the current layer determines the number of channels for the next layer. For convenience, we refer to this as a progressive effect. As a consequence, the entire model structure can be substantially compressed, and both the number of parameters and the inference costs can be substantially reduced. Meanwhile, the prediction accuracy remains very competitive with respect to that of the baseline model. The effectiveness of the proposed method is evaluated on a number of classical CNNs (AlexNet, VGGNet, ResNet and MobileNet) and benchmark datasets.</p>
    <p><button type="button" class="btn btn-info"><strong>演讲者</strong></button> 周静，中国人民大学统计学院副教授、应用统计科学研究中心研究员，北京大学光华管理学院博士，研究方向为社交网络、空间计量、模型压缩等，在Journal of Business & Economic Statistics，Statistic Sinica，Science China Mathematics，Electronic Commerce Research and Applications，管理科学，营销科学学报等国内外核心期刊发表论文十余篇，编著《深度学习：从入门到精通》教材一本，主持国自科、北社科、统计局重点等多项省部级以上课题。担任人民邮电出版社数据科学与统计·商业分析系列教材编委会委员。</p>
    </td>
  </tr>

  <tr>
    <td class="col-md-2">
    <p>吴奔</p>
    </td>
    <td class="col-md-8">
    <p class="text-center"><strong>Scalar-on-Image Neural Networks with the Soft-Thresholded Gaussian Process Prior</strong></p>
    </td>
    <td class="col-md-2">
    <button type="button" class="btn btn-default pull-right" data-toggle="collapse" href="#session-1-sub-3">详情</button>
    </td>
  </tr>
  <tr class="collapse" id="session-1-sub-3">
    <td colspan="3">
    <p><button type="button" class="btn btn-primary"><strong>摘要</strong></button> Deep neural networks have been adopted in the scalar-on-image regression which predicts the outcome variable using image predictors. However, training DNN often requires a large sample size to achieve a good prediction accuracy and the model fitting results can be difficult to interpret. In this work, we construct a novel single-layer Bayesian neural network(BNN) with spatially-varying coefficients (SVC) for the scalar-on-image regression. Our goal is to select interpretable image features and to achieve the high prediction accuracy with limited training samples. We assign the soft-thresholded Gaussian process (STGP) prior to the SVCs and develop an efficient posterior computation algorithm based on stochastic gradient Langevin Dynamics (SGLD). The BNN-STGP provides a large prior support for sparse, piecewise-smooth and continuous SVCs, enabling efficient posterior inference on image feature selection and automatically determining the network structures. We establish the posterior consistency of estimating the SVCs in the model and image feature selection consistency when the number of voxels/pixels grows much faster than the sample size. We compared our methods with state-of-the-art deep learning methods via extensive simulations and analyses of multiple real datasets including the task fMRI data from the ABCD study.</p>
    <p><button type="button" class="btn btn-info"><strong>演讲者</strong></button> 吴奔，中国人民大学统计学院讲师，Emory大学生物统计与生物信息系博士后，Michigan大学生物统计系博士后。主要研究方向为贝叶斯统计、独立成分分析、脑图像数据分析、金融高频数据分析等。</p>
    </td>
  </tr>

  <tr>
    <td class="col-md-2">
    <p>白琰冰</p>
    </td>
    <td class="col-md-8">
    <p class="text-center"><strong>基于改进BASNet卷积神经网络的卫星影像洪水信息提取研究</strong></p>
    </td>
    <td class="col-md-2">
    <button type="button" class="btn btn-default pull-right" data-toggle="collapse" href="#session-1-sub-4">详情</button>
    </td>
  </tr>
  <tr class="collapse" id="session-1-sub-4">
    <td colspan="3">
    <p><button type="button" class="btn btn-primary"><strong>摘要</strong></button> 高精度洪水信息提取能对灾后救助和恢复提供重要帮助，随着洪涝灾害在全球发生频率的提高和规模的增大，自动化的高精度洪水区域提取在气候变化背景下扮演着越发重要的角色。本研究主要基于Sen1Floods11多源卫星遥感影像数据集，利用卷积神经网络进行自动化洪水洪水区域提取。由于数据集存在严重的正负样本不平衡问题，即图像中大部分区域为负样本的陆地，水区域仅占极小比例，导致模型容易在负样本上表现较好，正样本预测效果较差。同时，由于数据量较少(机器标注4160张图像，人工标注446张图像)，模型容易出现过拟合。因此，我们在BASNet模型的基础上，一方面，利用focal loss缓解样本不平衡问题，另一方面，加入随机翻转、随机旋转、通道标准化等数据增强方法，增强模型泛化能力。模型目前在Sen1Flood11数据集上，对地表水的预测效果超过已有模型，在Test数据集上mIoU达到0.4097，BoliviaTest数据上mIoU达到0.4046。</p>
    <p><button type="button" class="btn btn-info"><strong>演讲者</strong></button> 白琰冰，中国人民大学统计学院，数据科学与大数据统计系讲师。主要研究领域包括机器学习、深度学习、大数据分布式计算、卫星遥感、空间数据科学等。在IEEE，Remote Sensing 等国际期刊发表多篇论文；主持美国Microsoft公司人工智能基金，参与日本学术振兴会JSPS基金项目；承担中国人民大学大数据硕士专业课程《大数据分布式计算》和本科生《统计学》的授课工作。担任北京大数据协会理事会理事。</p>
    </td>
  </tr>

  <tr>
    <td class="col-md-2">
    <p>张源源</p>
    </td>
    <td class="col-md-8">
    <p class="text-center"><strong>体育行业数字化实践</strong></p>
    </td>
    <td class="col-md-2">
    <button type="button" class="btn btn-default pull-right" data-toggle="collapse" href="#session-1-sub-5">详情</button>
    </td>
  </tr>
  <tr class="collapse" id="session-1-sub-5">
    <td colspan="3">
    <p><button type="button" class="btn btn-primary"><strong>摘要</strong></button> 伴随着移动互联网的高速发展，点赞微信运动排行榜、朋友圈晒跑步轨迹、打卡马拉松赛事、吃完火锅做Keep等等已经成为我们很多人的日常行为，这些行为也见证了体育行业数字化的高速发展。
<br>
<br> 本次分享将以体育行业从业者视角，通过对体育行业数字化的背景、进展、未来的分析、陈述、展望，回顾移动互联网背景下的体育行业数字化整个进程，并通过走路、跑步、健身、球类运动等几个垂直类别的数字化方案剖析，分享一些sensor、camera数据的机器学习实践经验。</p>
    <p><button type="button" class="btn btn-info"><strong>演讲者</strong></button> 张源源，百姓科服算法总监，曾负责阿里体育的数据算法团队，致力于用计算机视觉、传感器技术帮助体育运动数字化。在阿里期间开发的AI运动是业界第一个在手机端实时进行健身动作计数的应用，在疫情期间帮助30多所高校近20万名师生顺利开展体育课教学。在此之前，曾在百度获得百度年度新人，百度最佳团队成员等荣誉，在乐动力期间，负责计步、跑步、运动识别等工作，是国内第一家入选Appstore年度精选应用的App，对GPS、IMU数据有较多研究，有多项相关专利。</p>
    </td>
  </tr>


</table>

