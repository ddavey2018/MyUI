<div class="mdl-tabs mdl-js-tabs mdl-js-ripple-effect">
	<div class="mdl-tabs__tab-bar">
		<a href="#starks-panel" class="mdl-tabs__tab is-active">INTERFACES</a>
		<a href="#lannisters-panel" class="mdl-tabs__tab">GLOBAL COMPONENTS</a>

	</div>

	<div class="mdl-tabs__panel is-active" id="starks-panel">
		<link rel="stylesheet" href="../css/interfaces.css">
		<div>
			<a href="/interface">
				<button id="add-interface"
					class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored">
					Add Interface</button>
			</a>
		</div>
		<div class="table-card mdl-card mdl-shadow--2dp" style="">

			<div class="mdl-card__supporting-text">
				<table
					class="mdl-data-table mdl-js-data-table mdl-data-table--selectable mdl-shadow--2dp">
					<thead>
						<tr>
							<th class="mdl-data-table__cell--non-numeric">Material</th>
							<th>
								<button id="tbl-hdr-more"
									class="mdl-button mdl-js-button mdl-button--icon">
									<i class="material-icons">more_vert</i>
								</button>
								<ul class="mdl-menu mdl-js-menu" for="tbl-hdr-more">
									<li class="mdl-menu__item">Refresh</li>

								</ul>
							</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="mdl-data-table__cell--non-numeric">My UI</td>
							<td><button id="menu-speed"
									class="mdl-button mdl-js-button mdl-button--icon">
									<i class="material-icons">more_vert</i>
								</button>
								<ul class="mdl-menu mdl-js-menu" for="menu-speed">
									<li class="mdl-menu__item">Delete</li>

								</ul></td>
						</tr>

					</tbody>
				</table>
			</div>

		</div>
	</div>
	<div class="mdl-tabs__panel" id="lannisters-panel" >
	</div>

</div>