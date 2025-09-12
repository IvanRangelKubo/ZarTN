{% paginate by settings.category_quantity_products %}

{% set has_filters_available = products and has_filters_enabled and (filter_categories is not empty or product_filters is not empty) %}

{# Only remove this if you want to take away the theme onboarding advices #}
{% set show_help = not has_products %}


{% if not show_help %}

	<section class="seccinterna">

		{% embed "snipplets/page-header.tpl" with { breadcrumbs: true } %}
			{% block page_header_text %}{{ category.name }}{% endblock page_header_text %}
		{% endembed %}

		<div class="custom-container">
			<div class="w-row">

				<div class="w-col w-col-3">
					<div class="js-category-controls-prev category-controls-sticky-detector"></div>
					<div class="js-category-controls row align-items-center mb-md-3 category-controls categoryFilters">
						{% if products %}
							{% set columns = settings.grid_columns %}
							<div class="filtersCategory">
								<span class="sortLabel">Filtrar por:</span>
								{% if has_filters_available %}
									<a href="#" class="js-modal-open filter-link" data-toggle="#nav-filters">
										{{ 'Filtrar' | t }} {% include "snipplets/svg/filter.tpl" with {svg_custom_class: "icon-inline icon-w-16"} %}
									</a>
									{% embed "snipplets/modal.tpl" with{modal_id: 'nav-filters', modal_class: 'filters modal-docked-small', modal_position: 'left', modal_transition: 'slide', modal_width: 'full'} %}
										{% block modal_head %}
											{{'Filtros' | translate }}
										{% endblock %}
										{% block modal_body %}
											{% if filter_categories is not empty %}
												{% snipplet "grid/categories.tpl" %}
											{% endif %}
											{% if product_filters is not empty %}
												{% snipplet "grid/filters.tpl" %}
											{% endif %}
											<div class="js-filters-overlay filters-overlay" style="display: none;">
												<div class="filters-updating-message">
													<h3 class="js-applying-filter" style="display: none;">{{ 'Aplicando filtro...' | translate }}</h3>
													<h3 class="js-removing-filter" style="display: none;">{{ 'Borrando filtro...' | translate }}</h3>
												</div>
											</div>
										{% endblock %}
									{% endembed %}
								{% endif %}
							</div>
							
							<div class="divordenar mobile">
								<div class="ordenar-selector">
									{% include 'snipplets/grid/sort-by.tpl' %}
								</div>
							</div>

						{% endif %}
					</div>

					<!-- Filters -->
					<div class="row ApliedFilters">
						{% include "snipplets/grid/filters.tpl" with {applied_filters: true} %}
					</div>
					<!-- Filters -->
				</div>

				<div class="column-11 w-col w-col-9">

					<!-- Products -->
					{% if products %}

						<div class="divordenar">
							<div class="ordenar-selector">
								{% include 'snipplets/grid/sort-by.tpl' %}
							</div>
						</div>

						<div class="contlisting" data-store="category-grid-{{ category.id }}">
							{% include 'snipplets/product_grid.tpl' %}
						</div>
						{% include 'snipplets/grid/pagination.tpl' with { infinite_scroll: false } %}
					{% else %}
						<div class="notfounddiv">
							<div class="notfoundicon">:(</div>
							<h3 class="title-notfounddiv"><strong class="notfoundtxt">Lo sentimos</strong><br>Tu búsqueda no produjo ningún resultado, intenta nuevamente con otra palabra.</h3>
						</div>
					{% endif %}
					<!-- Products -->
				</div>
			</div>
		</div>
	</section>
	<style>
		.sortBy {
				display: flex;
				flex-direction: row;
				align-items: center;
				justify-content: flex-end;
				gap: 20px;
				flex: 1;
		}

		.categoryFilters {
			display: flex;
			flex-direction: row;
			align-content: center;
			margin: 10px auto;
		}

		.filtersCategory {
				display: flex;
				flex-direction: row;
				align-items: center;
				justify-content: flex-start;
				gap: 20px;
				flex: 1;
		}

		.sortBy > .form-group.mb-0 {
				width: 25%;
		}

		.sortLabel {
			font-size: medium;
			font-weight: 600;
			color: #c33;
		}

		.sortBy > .form-group > select.form-select.js-sort-by {
				border: none !important;
		}


		.filtersCategory > .js-modal-open.filter-link {
			width: fit-content;
			display: flex;
			gap: 10px;
			font-size: medium;
			padding: 4px 15px;
			border: 1px solid black;
			color: #000;
			text-align: center;
			font-family: Ubuntu, Helvetica, sans-serif;
			font-size: 12px;
			font-weight: 400;
			align-items: center;
		}

		.ApliedFilters {
			margin: auto !important;
		}

		.form-select-icon {
				display: none;
		}

		select.form-select.js-sort-by.ordenar-txt {
				padding: 0;
				border: none;
		}

		.divordenar.mobile {
			display: none;
		}



		    @media screen and (max-width: 479px) {
				.col-12.mb-3.containerFiltersApplied {
					flex-wrap: wrap;
				}

				.js-category-controls.row.align-items-center.mb-md-3.category-controls.categoryFilters {
					margin: 0px 10px 25px 10px;
				}

				.filtersCategory {
					gap: 10px;
				}

				.category-controls {
					top: 0 !important;
				}

				.divordenar.mobile {
						display: block;
				}
			}

	</style>
{% elseif show_help %}
	{# Category Placeholder #}
	{% include 'snipplets/defaults/show_help_category.tpl' %}
{% endif %}