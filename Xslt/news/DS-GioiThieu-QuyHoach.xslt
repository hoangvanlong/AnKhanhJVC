<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-introduce-detail-2" id="canhcam-detail-section-2" bg-img="./img/bg/bg-splendora.png">
			<div class="container fixed-width bg-white">
				<div class="slide">
					<h2 class="title text-center text-uppercase">quy hoạch</h2>
					<div class="row text-center text-lg-left mb-4">
						<div class="col-12">
							<p class="content">Lorem ipsum dolor sit amet consectetur adipisicing elit. Nulla, assumenda ipsam culpa laborum ab saepe possimus enim
								voluptate voluptatum, aliquid maiores necessitatibus laboriosam ducimus dolor natus explicabo iusto repudiandae harum?
								Aliquid maiores necessitatibus laboriosam ducimus dolor natus explicabo iusto repudiandae harum?</p>
						</div>
					</div>
					<div class="row mb-4 text-center">
						<div class="col-lg-6 mb-4 mb-lg-0">
							<figure>
								<img class="img-fluid" src="./img/gioithieu/quyhoach/img-1.png" alt="">
							</figure>
						</div>
						<div class="col-lg-6 text-left">
							<figure>
								<figcaption class="box-content">
									<ul class="list-unstyled">
										<li class="item mb-4">
											<h3 class="brief-content">Quy hoạch phân khu chức năng</h3>
										</li>
										<li class="item mb-4">
											<p class="content mb-3">Khu thương mại (498,000 m
												<sup>2</sup>)</p>
											<ul class="circle">
												<li>
													<p class="content">Tòa tháp thương mại cao tầng tọa lạc tại vị trí trung tâm của dự án.</p>
												</li>
												<li>
													<p class="content">Các khu vực nhà cộng đồng.</p>
												</li>
											</ul>
										</li>
										<li class="item mb-4">
											<p class="content mb-3">Nhà ở (8,593 căn)</p>
											<ul class="circle">
												<li>
													<p class="content">Biệt thự được thiết kế theo phong cách kiến trúc châu Âu.</p>
												</li>
												<li>
													<p class="content">Liền kề được thế kế có vườn cảnh với 3 kiểu khác nhau.</p>
												</li>
												<li>
													<p class="content">Chung cư cao tầng.</p>
												</li>
											</ul>
										</li>
										<li class="item mb-4">
											<p class="content mb-3">Tiện ích công cộng hiện đại</p>
											<ul class="circle">
												<li>
													<p class="content">Hệ thống giáo dục bao gồm trường mẫu giáo, trường tiểu học, trung học cơ sở và phổ thông trung học.</p>
												</li>
												<li>
													<p class="content">Phòng khám.</p>
												</li>
												<li>
													<p class="content">Công viên hồ điều hòa trung tâm.</p>
												</li>
												<li>
													<p class="content">Hệ thống nhà hàng và trung tâm giải trí.</p>
												</li>
											</ul>
										</li>
									</ul>
								</figcaption>
							</figure>
						</div>
					</div>
					<div class="row mb-4">
						<h3 class="brief-content text-left mb-4 mb-lg-5">Kế hoạch sử dụng đất</h3>
						<div class="col-12">
							<figure class="box-img">
								<img class="img-fluid" src="./img/gioithieu/quyhoach/img-2.png" alt="">
							</figure>
						</div>
						<div class="col-12">
							<figure class="box-img">
								<img class="img-fluid" src="./img/gioithieu/quyhoach/img-3.png" alt="">
							</figure>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="News">
		<div class="col-12">
			<div class="text">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<div class="col-12">
			<div class="owl-carousel cohoidautu">
				<xsl:apply-templates select="NewsImages"></xsl:apply-templates>
			</div>
		</div>
		<div class="col-12">
			<div class="text">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>

	<xsl:template match="NewsImages">
		<div class="item">
			<figure>
				<img class="img-fluid">
				<xsl:attribute name="src">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				</img>
				<figcaption>
					<h3>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
</xsl:stylesheet>