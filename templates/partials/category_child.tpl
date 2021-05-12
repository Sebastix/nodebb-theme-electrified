		<div class="category {children.class}" data-cid="{children.cid}" data-numRecentReplies="{children.numRecentReplies}">
			<meta itemprop="name" content="{children.name}">
			<!-- IF children.link -->
			<a style="color: {children.color};" href="{children.link}" itemprop="url" class="category-link">
			<!-- ELSE -->
			<a style="color: {children.color};" href="{config.relative_path}/category/{children.slug}" itemprop="url" class="category-link">
			<!-- ENDIF children.link -->
				<span class="category-title">
				  {children.name}
				</span>
				<!-- IF !categories.link -->
				<span class="total-topic-count {children.unread-class}">
						{children.totalTopicCount} onderwerpen
					</span>
				<!-- ENDIF !categories.link -->
				<div
					id="category-{children.cid}" class="category-header category-header-image-{children.imageClass}"
					title="{children.description}"
					style="
						<!-- IF children.backgroundImage -->background-image: url({children.backgroundImage});<!-- ENDIF children.backgroundImage -->
						<!-- IF children.bgColor -->background-color: {children.bgColor};<!-- ENDIF children.bgColor -->
					"
				>
					<div id="category-{children.cid}" class="category-slider-{children.numRecentReplies}">
						<!-- IF children.icon -->
						<div class="category-box"><i class="fa {children.icon} fa-4x"></i></div>
						<!-- ENDIF children.icon -->

						{{{each posts}}}
						<div class="category-box">
							<div class="post-preview">
								<img src="{children.posts.user.picture}" class="pull-left" />
								<p class=""><strong>{children.posts.user.username}</strong>: {children.posts.content}</p>
							</div>
						</div>
						{{{end}}}
						<!-- IF children.icon -->
						<div class="category-box"><i class="fa {children.icon} fa-4x"></i></div>
						<!-- ENDIF children.icon -->
					</div>
				</div>
			</a>
		</div>