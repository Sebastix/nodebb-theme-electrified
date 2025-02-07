<!-- IF !config.loggedIn -->
<div class="row">
	<div class="col-xs-12">
		<div class="alert alert-info alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
			Het ELECTRIFIED forum is splinternieuw. ELECTRIFIED is het nieuwe Nederlandse forum voor de EV-rijder, -liefhebber of EV-believer. Op dit forum ontmoet je gelijkgestemden, kun je antwoorden krijgen op jouw vragen, technisch of van andere aard, jouw auto delen en nog veel meer.
			<br />
			Maak een profiel aan, stel je zelf voor in de 'leden' categorie en je wordt beloond met een gratis toegangskaart en parkeerkaart voor het eerste ELECTRIFIED evenement op 22 - 24 oktober in Autotron Rosmalen.
			<br />
			<br />
			<a href="/register" class="btn btn-primary">Klik hier om je aan te melden</a>
		</div>
	</div>
</div>
<!-- ENDIF config.loggedIn -->

<!-- IMPORT partials/breadcrumbs.tpl -->
<div class="motd">
	<div data-widget-area="motd">
		{{{each widgets.motd}}}
		{{widgets.motd.html}}
		{{{end}}}
	</div>
</div>

<div class="row categories" itemscope itemtype="http://www.schema.org/ItemList">
	<div class="<!-- IF widgets.sidebar.length -->col-lg-9 col-sm-12<!-- ELSE -->col-lg-12<!-- ENDIF widgets.sidebar.length --> clearfix">
		{{{ if pagination.pages.length }}}
		<div><!-- IMPORT partials/category-selector.tpl --></div>
		{{{ end }}}
		<div class="row">
			{{{each categories}}}
			<div component="categories/category" class="category {categories.class}" data-cid="{categories.cid}" data-numRecentReplies="{categories.numRecentReplies}">
				<meta itemprop="name" content="{categories.name}">
				<!-- IF categories.link -->
				<a style="color: {categories.color};" href="{categories.link}" itemprop="url" target="_blank" class="category-link">
				<!-- ELSE -->
				<a style="color: {categories.color};" href="{config.relative_path}/category/{categories.slug}" itemprop="url" class="category-link">
				<!-- ENDIF categories.link -->
					<span class="category-title">
					  {categories.name}
					</span>
					<!-- IF !categories.link -->
					<span class="total-topic-count {categories.unread-class}">
						{categories.totalTopicCount} onderwerpen
					</span>
					<!-- ENDIF !categories.link -->
					<div
						id="category-{categories.cid}" class="category-header category-header-image-{categories.imageClass}"
						title="{categories.description}"
						style="
							<!-- IF categories.backgroundImage -->background-image: url({categories.backgroundImage});<!-- ENDIF categories.backgroundImage -->
							<!-- IF categories.bgColor -->background-color: {categories.bgColor};<!-- ENDIF categories.bgColor -->
						"
					>
					<div id="category-{categories.cid}" class="category-slider-{categories.numRecentReplies}">
						<!-- IF categories.icon -->
						<div class="category-box"><i class="fa {categories.icon} fa-4x"></i></div>
						<!-- ENDIF categories.icon -->

						{{{each posts}}}
						<div component="category/posts" class="category-box">
							<div class="post-preview">
								{buildAvatar(categories.posts.user, "sm", false, "pull-left")}
								<p class=""><strong>{categories.posts.user.displayname}</strong>: {categories.posts.content}</p>
							</div>
						</div>
						{{{end}}}
					</div>
					</div>
				</a>
			</div>
			{{{end}}}
		</div>
		<!-- IMPORT partials/paginator.tpl -->
	</div>

	<div data-widget-area="sidebar" class="col-lg-3 col-sm-12 <!-- IF !widgets.sidebar.length -->hidden<!-- ENDIF !widgets.sidebar.length -->">
		{{{each widgets.sidebar}}}
		{{widgets.sidebar.html}}
		{{{end}}}
	</div>
</div>
