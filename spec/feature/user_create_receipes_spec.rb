require 'rails_helper'

feature 'User create receipe' do
  scenario 'sucessfuly' do
    visit new_receipes_path

    fill_in 'Nome da receita',       with: 'Bolo de cenoura'
    fill_in 'Cozinha',               with: 'brasileira'
    fill_in 'Tipo de Comida',        with: 'doce'
    fill_in 'Quantas pessoas serve', with: '2'
    fill_in 'Tempo de preparo',      with: '45'
    fill_in 'Nível de dificuldade',  with: 'baixo'
    fill_in 'Ingradientes',          with: '3 ovos, 3 cenouras, Açucar'
    fill_in 'Passo a passo',         with: 'Só mexer...'

    click_on 'Criar receita'

    expect(page).to have_css 'h1', text: 'Bolo de cenoura'
    expect(page).to have_content 'brasileira'
    expect(page).to have_content 'doce'
    expect(page).to have_content '2'
    expect(page).to have_content '45'
    expect(page).to have_content 'baixo'
    expect(page).to have_content '3 ovos, 3 cenouras, Açucar'
    expect(page).to have_content 'Só mexer...'
  end
end
